-- Deploy: schemas/agentic_db_app_public/tables/agent_skills/columns/entity_id/alterations/alt0000004755
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_skills/table
-- requires: schemas/agentic_db_app_public/tables/agent_skills/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.agent_skills 
  ALTER COLUMN entity_id SET NOT NULL;

