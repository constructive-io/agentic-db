-- Deploy: schemas/agent_db_app_public/tables/notes/constraints/notes_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/venue_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".notes 
  ADD CONSTRAINT notes_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent_db_app_public".contacts (id) 
    ON DELETE CASCADE;

