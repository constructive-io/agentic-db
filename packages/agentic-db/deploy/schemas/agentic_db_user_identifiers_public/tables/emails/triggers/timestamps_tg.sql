-- Deploy: schemas/agentic_db_user_identifiers_public/tables/emails/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/emails/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_user_identifiers_public.emails
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

