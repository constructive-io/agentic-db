-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/procedures/org_rebuild_org_hierarchy_sprt/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema


CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-private".org_rebuild_org_hierarchy_sprt(
  IN p_entity_id uuid
) RETURNS void AS $_PGFN_$

        BEGIN
            DELETE FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts WHERE entity_id = p_entity_id;
            
            INSERT INTO "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts (entity_id, ancestor_id, descendant_id, depth)
            WITH RECURSIVE hierarchy AS (
                SELECT 
                    entity_id,
                    child_id AS ancestor_id,
                    child_id AS descendant_id,
                    0 AS depth
                FROM "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges
                WHERE entity_id = p_entity_id
                
                UNION ALL
                
                SELECT 
                    h.entity_id,
                    e.parent_id AS ancestor_id,
                    h.descendant_id,
                    h.depth + 1 AS depth
                FROM hierarchy h
                JOIN "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges e 
                    ON e.entity_id = h.entity_id 
                    AND e.child_id = h.ancestor_id
                WHERE e.parent_id IS NOT NULL
                    AND h.depth < 100
            )
            SELECT DISTINCT entity_id, ancestor_id, descendant_id, depth
            FROM hierarchy;
        END;
        
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

