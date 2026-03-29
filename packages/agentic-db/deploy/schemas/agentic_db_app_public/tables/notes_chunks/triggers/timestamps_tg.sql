-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_app_public.notes_chunks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

