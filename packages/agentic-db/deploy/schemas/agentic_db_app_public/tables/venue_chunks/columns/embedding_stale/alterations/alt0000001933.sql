-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding_stale/alterations/alt0000001933
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding_stale/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".venue_chunks 
  ALTER COLUMN embedding_stale SET NOT NULL;

