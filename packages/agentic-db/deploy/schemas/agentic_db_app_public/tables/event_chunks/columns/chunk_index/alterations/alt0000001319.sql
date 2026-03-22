-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/columns/chunk_index/alterations/alt0000001319
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".event_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

