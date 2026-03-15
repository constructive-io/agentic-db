-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/relation_kind/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".context_relations 
  DROP COLUMN relation_kind RESTRICT;


