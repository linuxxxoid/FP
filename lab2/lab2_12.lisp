;;;Запрограммируйте рекурсивно на языке Коммон Лисп функцию,
;;;подсчитывающую число вхождений заданного целого числа в дерево.
;;;Примеры
;;;(count-int 3 '((1 2) 3 (4 5 (3 6)) 7)) => 2


(defun count-int (number tree &aux (head (car tree)) (tail (cdr tree)))
  (cond ((null tree) 0)
        ((atom head) (if (eql number head)
                      (1+ (count-int number tail))
                      (count-int number tail)))
        ((+ (count-int number head) (count-int number tail)))))
