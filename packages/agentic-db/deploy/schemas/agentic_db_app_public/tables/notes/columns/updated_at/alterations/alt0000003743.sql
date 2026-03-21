-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/updated_at/alterations/alt0000003743
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.notes 
  ALTER COLUMN updated_at SET NOT NULL;

