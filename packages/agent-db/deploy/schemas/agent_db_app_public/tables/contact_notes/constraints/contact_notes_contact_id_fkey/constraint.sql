-- Deploy: schemas/agent_db_app_public/tables/contact_notes/constraints/contact_notes_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contact_notes/table
-- requires: schemas/agent_db_app_public/tables/agent_prompts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".contact_notes 
  ADD CONSTRAINT contact_notes_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent_db_app_public".contacts (id) 
    ON DELETE CASCADE;

