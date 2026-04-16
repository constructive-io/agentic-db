-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/indexes/expense_contacts_contact_id_idx


ALTER TABLE agentic_db_app_public.agent_prompts 
  ADD COLUMN agent_id uuid;

