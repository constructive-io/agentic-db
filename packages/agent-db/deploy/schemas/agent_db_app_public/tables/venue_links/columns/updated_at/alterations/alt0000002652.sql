-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/updated_at/alterations/alt0000002652
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/venue_links/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".venue_links 
    ALTER COLUMN updated_at SET DEFAULT now();

