-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/triggers/trigger_name
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_private/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table
-- requires: schemas/agentic_db_user_identifiers_private/trigger_fns/emails_insert_tg


CREATE TRIGGER trigger_name
BEFORE INSERT ON agentic_db_user_identifiers_public.emails
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_user_identifiers_private.emails_insert_tg ( );

