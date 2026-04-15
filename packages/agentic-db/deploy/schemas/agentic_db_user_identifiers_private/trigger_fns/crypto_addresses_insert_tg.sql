-- Deploy: schemas/agentic_db_user_identifiers_private/trigger_fns/crypto_addresses_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_private/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table


CREATE FUNCTION agentic_db_user_identifiers_private.crypto_addresses_insert_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  v_primary_field agentic_db_user_identifiers_public.crypto_addresses;
BEGIN
  SELECT *
  FROM agentic_db_user_identifiers_public.crypto_addresses AS e
  WHERE
    e.owner_id = NEW.owner_id AND is_primary IS TRUE INTO v_primary_field;
  IF NOT (FOUND) THEN
    new.is_primary := true;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

