-- Deploy: schemas/agent_db_app_public/tables/event_images/columns/id/alterations/alt0000000999
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_images/table
-- requires: schemas/agent_db_app_public/tables/event_images/columns/id/column
-- requires: schemas/agent_db_app_public/tables/company_images/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.event_images 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

