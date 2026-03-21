-- Deploy: schemas/agentic_db_app_public/tables/files/columns/created_at/alterations/alt0000004401
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/files/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.files 
  ALTER COLUMN created_at SET NOT NULL;

