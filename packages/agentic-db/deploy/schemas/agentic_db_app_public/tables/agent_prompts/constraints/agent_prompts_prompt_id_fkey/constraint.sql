-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/constraints/agent_prompts_prompt_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".agent_prompts 
  ADD CONSTRAINT agent_prompts_prompt_id_fkey 
    FOREIGN KEY(prompt_id) 
    REFERENCES "agentic_db_app_public".prompts (id) 
    ON DELETE CASCADE;

