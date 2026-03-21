-- Deploy: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/venue_images/policies/auth_del_entity_membership/policy


CREATE INDEX interactions_contact_id_idx ON "agentic_db_app_public".interactions USING BTREE ( contact_id );

