-- Deploy: schemas/agentic_db_app_public/tables/emails/constraints/emails_from_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/memories/indexes/memories_agent_id_idx


ALTER TABLE "agentic_db_app_public".emails 
  ADD CONSTRAINT emails_from_contact_id_fkey 
    FOREIGN KEY(from_contact_id) 
    REFERENCES "agentic_db_app_public".contacts (id) 
    ON DELETE SET NULL;

