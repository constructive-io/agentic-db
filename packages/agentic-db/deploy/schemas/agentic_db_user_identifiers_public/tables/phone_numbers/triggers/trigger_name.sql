-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/triggers/trigger_name
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_private/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agentic_db_user_identifiers_private/trigger_fns/phone_numbers_insert_tg


CREATE TRIGGER trigger_name
BEFORE INSERT ON agentic_db_user_identifiers_public.phone_numbers
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_user_identifiers_private.phone_numbers_insert_tg ( );

