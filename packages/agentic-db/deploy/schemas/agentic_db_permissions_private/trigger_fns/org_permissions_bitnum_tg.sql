-- Deploy: schemas/agentic_db_permissions_private/trigger_fns/org_permissions_bitnum_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_private/schema



CREATE FUNCTION "agentic_db_permissions_private".org_permissions_bitnum_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    bitlen int = bit_length(NEW.bitstr);
BEGIN
    NEW.bitstr = 
        lpad('', bitlen - NEW.bitnum, '0') ||
	    '1' ||
	    lpad('', NEW.bitnum - 1, '0');
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

