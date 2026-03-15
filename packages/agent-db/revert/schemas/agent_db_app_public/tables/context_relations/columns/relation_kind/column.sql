-- Revert: schemas/agent_db_app_public/tables/context_relations/columns/relation_kind/column


ALTER TABLE agent_db_app_public.context_relations 
  DROP COLUMN relation_kind RESTRICT;


