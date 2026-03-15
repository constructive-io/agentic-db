-- Deploy: schemas/agent_db_app_public/tables/venue_images/columns/id/alterations/alt0000001005
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_images/table
-- requires: schemas/agent_db_app_public/tables/venue_images/columns/id/column
-- requires: schemas/agent_db_app_public/tables/event_images/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.venue_images 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

