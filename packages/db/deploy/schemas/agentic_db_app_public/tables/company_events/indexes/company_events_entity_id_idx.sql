-- Deploy: schemas/agentic_db_app_public/tables/company_events/indexes/company_events_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/tables/company_events/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX company_events_entity_id_idx ON "agentic_db_app_public".company_events USING BTREE ( entity_id );

