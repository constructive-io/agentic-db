-- Deploy: schemas/agentic_db_storage_public/tables/files/alterations/alt0000012903
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


COMMENT ON TABLE agentic_db_storage_public.files IS E'@storageFiles\\nIndividual file records within buckets, with immutable identity fields and mutable metadata';

