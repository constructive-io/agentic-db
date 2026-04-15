-- Deploy: schemas/agentic_db_auth_public/procedures/check_password/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_public/schema


CREATE FUNCTION agentic_db_auth_public.check_password(
  IN password text
) RETURNS void AS $_PGFN_$
BEGIN
  IF check_password.password IS NULL THEN
    RAISE EXCEPTION 'PASSWORD_LEN';
  END IF;
  SELECT trim(check_password.password) INTO check_password.password;
  IF character_length(check_password.password) <= 7 OR character_length(check_password.password) >= 64 THEN
    RAISE EXCEPTION 'PASSWORD_LEN';
  END IF;
  IF check_password.password::citext = ANY( ARRAY['password', '12345678', '123456789', 'baseball', 'football', 'qwertyuiop', '1234567890', 'superman', '1qaz2wsx', 'trustno1', 'jennifer', 'sunshine', 'iloveyou', 'starwars', 'computer', 'michelle', '11111111', 'princess', '987654321', 'corvette', '1234qwer', '88888888', 'q1w2e3r4t5', 'internet', 'samantha', 'whatever', 'maverick', 'steelers', 'mercedes', '123123123', 'qwer1234', 'hardcore', 'q1w2e3r4', 'midnight', 'bigdaddy', 'victoria', '1q2w3e4r', 'cocacola', 'marlboro', 'asdfasdf', '87654321', '12344321', 'jordan23', 'Password', 'jonathan', 'liverpoo', 'danielle', 'abcd1234', 'scorpion', 'qazwsxedc', 'password1', 'slipknot', 'qwerty123', 'startrek', '12341234', 'redskins', 'butthead', 'asdfghjkl', 'qwertyui', 'liverpool', 'dolphins', 'nicholas', 'elephant', 'mountain', 'xxxxxxxx', '1q2w3e4r5t', 'metallic', 'shithead', 'benjamin', 'creative', 'rush2112', 'asdfghjk', '4815162342', 'passw0rd', 'bullshit', '1qazxsw2', 'garfield', '01012011', '69696969', 'december', '11223344', 'godzilla', 'airborne', 'lifehack', 'brooklyn', 'platinum', 'darkness', 'blink182', '789456123', '12qwaszx', 'snowball', 'pakistan', 'redwings', 'williams', 'nintendo', 'guinness', 'november', 'minecraft', 'asdf1234', 'lasvegas', 'babygirl', 'dickhead', '12121212', '147258369', 'explorer', 'snickers', 'metallica', 'alexande', 'paradise', 'michigan', 'carolina', 'lacrosse', 'christin', 'kimberly', 'kristina', '0987654321', 'poohbear', 'bollocks', 'qweasdzxc', 'drowssap', 'caroline', 'einstein', 'spitfire', 'maryjane', '1232323q', 'champion', 'svetlana', 'westside', 'courtney', '12345qwert', 'patricia', 'aaaaaaaa', 'anderson', 'security', 'stargate', 'simpsons', 'scarface', '123456789a', '1234554321', 'cherokee', 'Usuckballz1', 'veronica', 'semperfi', 'scotland', 'marshall', 'qwerty12', '98765432', 'softball', 'passport', 'franklin', 'alexander', '55555555', 'zaq12wsx', 'infinity', 'kawasaki', '77777777', 'vladimir', 'freeuser', 'wildcats', 'budlight', 'brittany', '00000000', 'bulldogs', 'swordfis', 'PASSWORD']::citext[] ) THEN
    RAISE EXCEPTION 'PASSWORD_INSECURE';
  END IF;
END;
$_PGFN_$ LANGUAGE plpgsql;

