-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/constraints/contact_memories_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.contact_memories 
  ADD CONSTRAINT contact_memories_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE CASCADE;

