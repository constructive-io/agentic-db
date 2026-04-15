-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/constraints/contact_notes_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/agent_prompts/indexes/agent_prompts_prompt_id_idx


ALTER TABLE agentic_db_app_public.contact_notes 
  ADD CONSTRAINT contact_notes_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE CASCADE;

