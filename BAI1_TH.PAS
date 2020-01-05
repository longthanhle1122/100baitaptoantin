program BAI1_TH;
uses crt;
type
        IntArr = array[1..100000] of longint;
var
        N, total : longint;
        A : IntArr;
procedure Input();
var
        i : longint;
begin
        write('So nguoi: ');
        readln(N);
        for i := 1 to N do
        begin
                write('Nguoi thu ',i,' di bao nhieu phut? ');
                readln(A[i]);
        end;
end;
function Min(X : IntArr ; sizeofX : longint) : longint;
var
        i, exVal : longint;
begin
        exVal := X[1];
        for i := 2 to sizeofX do
                if (X[i] < exVal) then
                        exVal := X[i];
        exit(exVal);
end;
procedure Process();
var
        i, key : longint;
begin
        key := Min(A,N);
        total := key*(N-2);
        for i := 1 to N do
                if (A[i] <> key) then
                        total := total + A[i];
end;
procedure Output();
begin
        writeln(total);
end;
begin
        Input();
        Process();
        Output();
        readln;
end.
