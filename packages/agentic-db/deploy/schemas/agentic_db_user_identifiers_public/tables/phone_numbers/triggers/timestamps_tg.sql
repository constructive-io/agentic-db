-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_user_identifiers_public.phone_numbers
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

