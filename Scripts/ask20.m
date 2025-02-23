msg1 = 'my name is '
msg2 = input('my name is ', 's')
myname = strcat(msg1, msg2)
numSymbols = 1:1:length(myname)
for i = 1:numSymbols
    p(i,:) = randn(0, 1)
    symbols(i,:) = myname(i)
end
dict = huffmandict(symbols, p)
sig = randscrn(100, 1, [symbols; p])
comp = huffmanenco(sig, dict)
dsig = huffmandeco(comp, dict)
isequal(sig, dsig)