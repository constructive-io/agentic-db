-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/agent_prompts/policies/auth_del_entity_membership/policy


CREATE INDEX contacts_embedding_hnsw_idx ON agent_db_app_public.contacts USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

