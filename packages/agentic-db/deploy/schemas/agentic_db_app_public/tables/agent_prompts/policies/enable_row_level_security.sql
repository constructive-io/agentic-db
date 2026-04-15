-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/indexes/expense_contacts_contact_id_idx


ALTER TABLE agentic_db_app_public.agent_prompts 
  ENABLE ROW LEVEL SECURITY;

