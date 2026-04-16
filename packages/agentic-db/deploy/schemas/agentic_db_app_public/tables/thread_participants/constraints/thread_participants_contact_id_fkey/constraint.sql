-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/constraints/thread_participants_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/indexes/skill_tools_tool_definition_id_idx


ALTER TABLE agentic_db_app_public.thread_participants 
  ADD CONSTRAINT thread_participants_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE CASCADE;

