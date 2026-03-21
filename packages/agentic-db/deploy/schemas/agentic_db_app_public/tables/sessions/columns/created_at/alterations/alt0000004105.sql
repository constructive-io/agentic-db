-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/created_at/alterations/alt0000004105
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/sessions/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.sessions 
  ALTER COLUMN created_at SET NOT NULL;

