-- Deploy: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/columns/embedding/column


ALTER TABLE "agent_db_app_public".venue_links 
  ADD CONSTRAINT venue_links_pkey PRIMARY KEY (id);

