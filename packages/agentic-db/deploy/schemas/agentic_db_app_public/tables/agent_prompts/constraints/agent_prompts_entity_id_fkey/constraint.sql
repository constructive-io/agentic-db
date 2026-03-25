-- Deploy: schemas/agentic_db_app_public/tables/agent_prompts/constraints/agent_prompts_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".agent_prompts 
  ADD CONSTRAINT agent_prompts_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

