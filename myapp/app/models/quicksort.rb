# QuickSort - implementacja sortowania szybkiego
# created by mephisto
# www.algorytm.org
class QuickSort
  
  def sort(arr)
    sort_internally(arr, 0, arr.length-1)
  end
  	
  # Sprawdza czy tablica zostala posortowana
  def is_sorted(arr)
    for i in 1...arr.length
      return false if less(arr[i], arr[i-1]) 

      return true
    end
  end
  
  # Wypisuje wszystkie elementy tablicy
  def print_elements(arr)
    arr.each {|it| print it, " " unless it.nil?}
    print "\n"
  end
  
private 
  def sort_internally(arr, lo, hi)
    return if lo >= hi
    # wyliczenie indeksu elementu osiowego
    j = partition(arr, lo, hi)
    # rekurencyjne sortowanie lewej strony
    sort_internally(arr, lo, j-1)
    # rekurencyjne sortowanie prawej strony
    sort_internally(arr, j+1, hi)
  end
  
  def partition(arr, lo, hi)
    i = lo
    j = hi+1
    # wartosc elementu osiowego
    p = arr[lo]
    while true
      # odnajdujemy element po lewej stronie, ktory jest mniejszy od osiowego
      while less(arr[i+=1], p) 
        break if i == hi
      end  
      # odnajdujemy element po prawej stronie, ktory jest wiekszy od osiowego
      while less(p, arr[j-=1]) 
        break if j == lo
      end
      #
      break if i >=j
      exchange(arr, i, j)
    end
    exchange(arr, lo, j)
    return j
  end
  
  # Zamienia dwa elementy tablicy o indeksach i, j w tablicy arr
  def exchange(arr, i, j)
    arr[i], arr[j] = arr[j], arr[i]
  end
  
  # Sprawdza czy lewy operand jest mniejszy od prawego
  def less(lhs, rhs)
    return lhs < rhs
  end
  
end

arr = [4, -6, 8, 90, -67]
sorting = QuickSort.new
sorting.sort(arr)
puts "Nieposortowana!" unless sorting.is_sorted(arr)
sorting.print_elements(arr)
