-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/columns/contact_id/alterations/alt0000004772
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.contact_notes 
  ALTER COLUMN contact_id SET NOT NULL;

