-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/main_image_id/column
-- requires: schemas/agentic_db_app_public/tables/venues/columns/embedding_text/column


CREATE INDEX venues_embedding_text_bm25_idx ON "agentic_db_app_public".venues USING bm25 ( embedding_text ) WITH ( text_config = english );

