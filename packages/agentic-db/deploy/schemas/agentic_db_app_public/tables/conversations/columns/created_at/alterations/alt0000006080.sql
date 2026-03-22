-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/created_at/alterations/alt0000006080
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/conversations/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN created_at SET NOT NULL;

