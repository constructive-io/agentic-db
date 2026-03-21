-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy


CREATE INDEX contacts_embedding_hnsw_idx ON agentic_db_app_public.contacts USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

