-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/columns/note_id/alterations/alt0000005369
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/columns/note_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN note_id SET NOT NULL;

