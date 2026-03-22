-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/columns/interaction_id/alterations/alt0000002043
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/columns/interaction_id/column


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  ALTER COLUMN interaction_id SET NOT NULL;

