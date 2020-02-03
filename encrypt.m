function char_array = encrypt(txt,key)

tmp=txt;

for idx = 1:numel(tmp)
    tmp(idx)=char2double(tmp(idx));
    tmp(idx)=double2char(key(tmp(idx)));
    
end
char_array = tmp;