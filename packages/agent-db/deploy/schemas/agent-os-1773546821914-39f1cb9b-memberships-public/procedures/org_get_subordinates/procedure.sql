-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/procedures/org_get_subordinates/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema


CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-memberships-public".org_get_subordinates(
  IN p_entity_id uuid,
  IN p_user_id uuid,
  IN p_max_depth int DEFAULT NULL
) RETURNS TABLE(user_id uuid, depth int) AS $_PGFN_$

        BEGIN
            RETURN QUERY
            SELECT descendant_id AS user_id, h.depth
            FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts h
            WHERE h.entity_id = p_entity_id
                AND h.ancestor_id = p_user_id
                AND h.descendant_id != p_user_id
                AND (p_max_depth IS NULL OR h.depth <= p_max_depth);
        END;
        
$_PGFN_$ LANGUAGE plpgsql STABLE SECURITY DEFINER;

