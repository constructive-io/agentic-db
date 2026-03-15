-- Deploy: schemas/agent_db_app_public/tables/context_relations/indexes/context_relations_to_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/to_type/column
-- requires: schemas/agent_db_app_public/tables/context_relations/indexes/context_relations_from_id_idx


CREATE INDEX context_relations_to_type_idx ON agent_db_app_public.context_relations USING BTREE ( to_type );

