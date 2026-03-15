-- Deploy: schemas/agent_db_app_public/tables/contact_links/constraints/contact_links_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.contact_links 
  ADD CONSTRAINT contact_links_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agent_db_app_public.contacts (id) 
    ON DELETE CASCADE;

