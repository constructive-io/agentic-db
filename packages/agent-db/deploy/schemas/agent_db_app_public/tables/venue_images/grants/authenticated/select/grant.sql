-- Deploy: schemas/agent_db_app_public/tables/venue_images/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_images/table
-- requires: schemas/agent_db_app_public/tables/event_images/policies/auth_del_entity_membership/policy


GRANT SELECT ON "agent_db_app_public".venue_images TO authenticated;

