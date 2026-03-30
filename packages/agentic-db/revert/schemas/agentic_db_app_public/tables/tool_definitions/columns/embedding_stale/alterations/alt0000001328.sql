-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/columns/embedding_stale/alterations/alt0000001328




ALTER TABLE "agentic_db_app_public".tool_definitions 
    ALTER COLUMN embedding_stale DROP DEFAULT;



