-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/updated_at/alterations/alt0000004480
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/documents/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN updated_at SET NOT NULL;

