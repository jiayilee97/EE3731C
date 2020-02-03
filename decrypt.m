function frank_decrypted_txt=decrypt(frank_encrypted_txt,frank_decrypt_key)

%>> frank_encrypted_double = char2double(frank_encrypted_txt);
%>> frank_decrypted_double = frank_decrypt_key(frank_encrypted_double);
%>> frank_decrypted_txt = double2char(frank_decrypted_double);

frank_encrypted_double=char2double(frank_encrypted_txt);
frank_decrypted_double=frank_decrypt_key(frank_encrypted_double);
frank_decrypted_txt = double2char(frank_decrypted_double);

