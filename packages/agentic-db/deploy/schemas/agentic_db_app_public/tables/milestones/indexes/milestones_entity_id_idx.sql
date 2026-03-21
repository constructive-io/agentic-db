-- Deploy: schemas/agentic_db_app_public/tables/milestones/indexes/milestones_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/search_tsv/column
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/entity_id/column


CREATE INDEX milestones_entity_id_idx ON agentic_db_app_public.milestones USING BTREE ( entity_id );

