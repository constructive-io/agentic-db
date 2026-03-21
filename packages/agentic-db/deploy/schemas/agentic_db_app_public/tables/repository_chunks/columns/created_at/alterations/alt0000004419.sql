-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/columns/created_at/alterations/alt0000004419
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.repository_chunks 
  ALTER COLUMN created_at SET NOT NULL;

