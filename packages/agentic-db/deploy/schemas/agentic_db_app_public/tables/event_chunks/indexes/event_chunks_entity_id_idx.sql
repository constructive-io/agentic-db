-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/indexes/event_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX event_chunks_entity_id_idx ON agentic_db_app_public.event_chunks USING BTREE ( entity_id );

