var _enemy		= instance_nearest(x, y, oEnemiesParent);

_enemy.life--;
instance_destroy(id);
