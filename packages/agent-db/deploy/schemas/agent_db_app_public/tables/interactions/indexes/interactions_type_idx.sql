-- Deploy: schemas/agent_db_app_public/tables/interactions/indexes/interactions_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/type/column
-- requires: schemas/agent_db_app_public/tables/interactions/indexes/interactions_contact_id_idx


CREATE INDEX interactions_type_idx ON agent_db_app_public.interactions USING BTREE ( type );

