-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/procedures/org_is_manager_of/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema


CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-public".org_is_manager_of(
  IN p_entity_id uuid,
  IN p_manager_id uuid,
  IN p_user_id uuid,
  IN p_max_depth int DEFAULT NULL
) RETURNS boolean AS $_PGFN_$

        BEGIN
            RETURN EXISTS (
                SELECT 1
                FROM "agent-os-1773550873753-b6c4a3e1-memberships-private".org_hierarchy_sprts h
                WHERE h.entity_id = p_entity_id
                    AND h.ancestor_id = p_manager_id
                    AND h.descendant_id = p_user_id
                    AND h.ancestor_id != h.descendant_id
                    AND (p_max_depth IS NULL OR h.depth <= p_max_depth)
            );
        END;
        
$_PGFN_$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

