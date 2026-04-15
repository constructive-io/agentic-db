-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/indexes/agent_prompts_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/indexes/expense_contacts_contact_id_idx


CREATE INDEX agent_prompts_agent_id_idx ON agentic_db_app_public.agent_prompts USING BTREE ( agent_id );

